  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  vmovdqa %xmm1, %xmm8                            #  2     0x5   4      OPC=vmovdqa_xmm_xmm   
  unpcklpd %xmm10, %xmm1                          #  3     0x9   5      OPC=unpcklpd_xmm_xmm  
  andnps %xmm1, %xmm8                             #  4     0xe   4      OPC=andnps_xmm_xmm    
  movss %xmm8, %xmm1                              #  5     0x12  5      OPC=movss_xmm_xmm     
  retq                                            #  6     0x17  1      OPC=retq              
                                                                                              
.size target, .-target
