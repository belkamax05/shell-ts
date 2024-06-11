package main

import (
	"github.com/spf13/cobra"
)

func print3() *cobra.Command {
	var cmdPrint3 = &cobra.Command{
		Use:   "print3 [string to print]",
		Short: "Print3 anything to the screen",
		Args:  cobra.MinimumNArgs(1),
		Run: func(cmd *cobra.Command, args []string) {
			println("Third", args[0])
		},
	}
	return cmdPrint3
}

func main() {

	var rootCmd = &cobra.Command{
		Use:   "sts go",
		Short: "My application",
	}

	var cmdPrint = &cobra.Command{
		Use:   "print [string to print]",
		Short: "Print anything to the screen",
		Args:  cobra.MinimumNArgs(1),
		Run: func(cmd *cobra.Command, args []string) {
			println(args[0])
		},
	}

	var cmdPrint2 = &cobra.Command{
		Use:   "print2 [string to print]",
		Short: "Print2 anything to the screen",
		Args:  cobra.MinimumNArgs(1),
		Run: func(cmd *cobra.Command, args []string) {
			println("Second", args[0])
		},
	}
	var cmdPrint3 = print3()

	rootCmd.AddCommand(cmdPrint)
	rootCmd.AddCommand(cmdPrint2)
	rootCmd.AddCommand(cmdPrint3)
	rootCmd.Execute()

}
