  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label        
  vzeroall                          #  2     0x5   3      OPC=vzeroall           
  xorb %r13b, %r12b                 #  3     0x8   3      OPC=xorb_r8_r8         
  seto %r12b                        #  4     0xb   4      OPC=seto_r8            
  callq .move_064_128_r12_r13_xmm2  #  5     0xf   5      OPC=callq_label        
  cvtsi2ssl %ebx, %xmm2             #  6     0x14  4      OPC=cvtsi2ssl_xmm_r32  
  por %xmm2, %xmm1                  #  7     0x18  4      OPC=por_xmm_xmm        
  retq                              #  8     0x1c  1      OPC=retq               
                                                                                 
.size target, .-target
