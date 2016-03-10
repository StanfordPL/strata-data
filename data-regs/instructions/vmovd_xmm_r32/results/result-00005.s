  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode             
.target:                          #        0     0      OPC=<label>        
  vzeroall                        #  1     0     3      OPC=vzeroall       
  callq .move_128_064_xmm1_r8_r9  #  2     0x3   5      OPC=callq_label    
  xchgl %r8d, %ebx                #  3     0x8   3      OPC=xchgl_r32_r32  
  callq .move_064_128_r8_r9_xmm1  #  4     0xb   5      OPC=callq_label    
  retq                            #  5     0x10  1      OPC=retq           
                                                                           
.size target, .-target
