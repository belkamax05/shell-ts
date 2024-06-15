package main

import (
	"github.com/belkamax05/shell-ts/app/cli"
	"github.com/spf13/cobra"
)


func main() {
	// printColorGallery()

	var rootCmd = &cobra.Command{
		Use:   "sts",
		Short: "My application",
		Long: `
My application is a tool to do stuff.
`,
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
	var cmdPrint3 = cli.Print3()

	rootCmd.AddCommand(cmdPrint)
	rootCmd.AddCommand(cmdPrint2)
	rootCmd.AddCommand(cmdPrint3)
	rootCmd.Execute()

	cli.Nav2()

	// zsh: command not found: asdasdfdgg

}
