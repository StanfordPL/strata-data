  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .read_sf_into_rcx            #  1     0     5      OPC=callq_label     
  xorl %eax, %eax                    #  2     0x5   2      OPC=xorl_r32_r32    
  callq .move_064_032_rcx_r10d_r11d  #  3     0x7   5      OPC=callq_label     
  movzwl %r10w, %r15d                #  4     0xc   4      OPC=movzwl_r32_r16  
  xorl %eax, %r15d                   #  5     0x10  3      OPC=xorl_r32_r32    
  setnp %ah                          #  6     0x13  3      OPC=setnp_rh        
  retq                               #  7     0x16  1      OPC=retq            
                                                                               
.size target, .-target
