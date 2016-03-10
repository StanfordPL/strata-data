  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode             
.target:                                    #        0     0      OPC=<label>        
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label    
  vzeroall                                  #  2     0x5   3      OPC=vzeroall       
  xchgl %edx, %r9d                          #  3     0x8   3      OPC=xchgl_r32_r32  
  xchgl %eax, %r8d                          #  4     0xb   3      OPC=xchgl_r32_r32  
  callq .move_064_128_r8_r9_xmm1            #  5     0xe   5      OPC=callq_label    
  retq                                      #  6     0x13  1      OPC=retq           
                                                                                     
.size target, .-target
