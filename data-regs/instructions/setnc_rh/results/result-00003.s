  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  setae %r10b                     #  1     0     4      OPC=setae_r8        
  movsbl %r10b, %r8d              #  2     0x4   4      OPC=movsbl_r32_r8   
  movsbq %r8b, %r9                #  3     0x8   4      OPC=movsbq_r64_r8   
  callq .move_008_016_r8b_r9b_dx  #  4     0xc   5      OPC=callq_label     
  movzwl %dx, %eax                #  5     0x11  3      OPC=movzwl_r32_r16  
  retq                            #  6     0x14  1      OPC=retq            
                                                                            
.size target, .-target
