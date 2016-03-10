  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpckhpd %xmm10, %xmm11, %xmm2                 #  2     0x5   5      OPC=vunpckhpd_xmm_xmm_xmm  
  movdqu %xmm10, %xmm1                            #  3     0xa   5      OPC=movdqu_xmm_xmm         
  movhlps %xmm2, %xmm1                            #  4     0xf   3      OPC=movhlps_xmm_xmm        
  retq                                            #  5     0x12  1      OPC=retq                   
                                                                                                   
.size target, .-target
