  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  movsldup %xmm3, %xmm14                          #  1     0     5      OPC=movsldup_xmm_xmm       
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label            
  vmovupd %xmm2, %xmm13                           #  3     0xa   4      OPC=vmovupd_xmm_xmm        
  vminss %xmm2, %xmm13, %xmm1                     #  4     0xe   4      OPC=vminss_xmm_xmm_xmm     
  vunpckhpd %xmm11, %xmm14, %xmm10                #  5     0x12  5      OPC=vunpckhpd_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x17  5      OPC=callq_label            
  retq                                            #  7     0x1c  1      OPC=retq                   
                                                                                                   
.size target, .-target
