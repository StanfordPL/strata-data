  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  vandnps %xmm1, %xmm1, %xmm13                    #  1     0     4      OPC=vandnps_xmm_xmm_xmm      
  callq .move_128_064_xmm3_r10_r11                #  2     0x4   5      OPC=callq_label              
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label              
  vmovd %r10d, %xmm10                             #  4     0xe   5      OPC=vmovd_xmm_r32            
  vhaddps %xmm10, %xmm1, %xmm1                    #  5     0x13  5      OPC=vhaddps_xmm_xmm_xmm      
  vfmsub132pd %xmm8, %xmm13, %xmm9                #  6     0x18  5      OPC=vfmsub132pd_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1d  5      OPC=callq_label              
  retq                                            #  8     0x22  1      OPC=retq                     
                                                                                                     
.size target, .-target
