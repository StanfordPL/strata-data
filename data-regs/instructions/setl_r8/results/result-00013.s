  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  setnge %dl                        #  1     0     3      OPC=setnge_r8      
  movzbl %dl, %ebx                  #  2     0x3   3      OPC=movzbl_r32_r8  
  callq .move_032_016_ebx_r8w_r9w   #  3     0x6   5      OPC=callq_label    
  callq .move_r9b_to_byte_2_of_rbx  #  4     0xb   5      OPC=callq_label    
  retq                              #  5     0x10  1      OPC=retq           
                                                                             
.size target, .-target
