  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  movupd %xmm2, %xmm6                             #  2     0x5   4      OPC=movupd_xmm_xmm        
  cvtss2sd %xmm3, %xmm9                           #  3     0x9   5      OPC=cvtss2sd_xmm_xmm      
  unpckhps %xmm6, %xmm10                          #  4     0xe   4      OPC=unpckhps_xmm_xmm      
  vminsd %xmm8, %xmm10, %xmm14                    #  5     0x12  5      OPC=vminsd_xmm_xmm_xmm    
  vmovhlps %xmm9, %xmm14, %xmm1                   #  6     0x17  5      OPC=vmovhlps_xmm_xmm_xmm  
  retq                                            #  7     0x1c  1      OPC=retq                  
                                                                                                  
.size target, .-target
