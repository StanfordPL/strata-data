  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vminps %xmm9, %xmm1, %xmm12                     #  2     0x5   5      OPC=vminps_xmm_xmm_xmm  
  vsubpd %xmm12, %xmm12, %xmm14                   #  3     0xa   5      OPC=vsubpd_xmm_xmm_xmm  
  movddup %xmm14, %xmm1                           #  4     0xf   5      OPC=movddup_xmm_xmm     
  retq                                            #  5     0x14  1      OPC=retq                
                                                                                                
.size target, .-target
