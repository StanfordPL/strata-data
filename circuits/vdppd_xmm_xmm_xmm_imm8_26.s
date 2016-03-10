  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  vmulpd %xmm3, %xmm2, %xmm2      #  1     0     4      OPC=vmulpd_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9  #  2     0x4   5      OPC=callq_label         
  vzeroall                        #  3     0x9   3      OPC=vzeroall            
  vmovq %r8, %xmm7                #  4     0xc   5      OPC=vmovq_xmm_r64       
  haddpd %xmm7, %xmm1             #  5     0x11  4      OPC=haddpd_xmm_xmm      
  retq                            #  6     0x15  1      OPC=retq                
                                                                                
.size target, .-target
