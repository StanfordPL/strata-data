  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  xchgb %ah, %al                    #  1     0     2      OPC=xchgb_r8_rh    
  movsbq %al, %rbx                  #  2     0x2   4      OPC=movsbq_r64_r8  
  callq .move_064_032_rbx_r8d_r9d   #  3     0x6   5      OPC=callq_label    
  callq .move_byte_2_of_rbx_to_r8b  #  4     0xb   5      OPC=callq_label    
  callq .move_032_064_r8d_r9d_rdx   #  5     0x10  5      OPC=callq_label    
  retq                              #  6     0x15  1      OPC=retq           
                                                                             
.size target, .-target
