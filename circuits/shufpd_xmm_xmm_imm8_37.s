  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  movlhps %xmm2, %xmm4                          #  2     0x5   3      OPC=movlhps_xmm_xmm     
  vmovdqa %xmm5, %xmm9                          #  3     0x8   4      OPC=vmovdqa_xmm_xmm     
  vmovss %xmm9, %xmm4, %xmm11                   #  4     0xc   5      OPC=vmovss_xmm_xmm_xmm  
  unpckhpd %xmm11, %xmm1                        #  5     0x11  5      OPC=unpckhpd_xmm_xmm    
  retq                                          #  6     0x16  1      OPC=retq                
                                                                                              
.size target, .-target
