  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vmovhlps %xmm3, %xmm3, %xmm12                   #  2     0x5   4      OPC=vmovhlps_xmm_xmm_xmm   
  vmovsldup %xmm12, %xmm0                         #  3     0x9   5      OPC=vmovsldup_xmm_xmm      
  vpandn %xmm0, %xmm11, %xmm14                    #  4     0xe   4      OPC=vpandn_xmm_xmm_xmm     
  vunpckhps %xmm2, %xmm14, %xmm8                  #  5     0x12  4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovsd %xmm2, %xmm8, %xmm1                      #  6     0x16  4      OPC=vmovsd_xmm_xmm_xmm     
  retq                                            #  7     0x1a  1      OPC=retq                   
                                                                                                   
.size target, .-target
