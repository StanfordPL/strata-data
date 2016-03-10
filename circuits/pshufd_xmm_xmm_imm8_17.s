  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label            
  vmovd %r11d, %xmm10                           #  2     0x5   5      OPC=vmovd_xmm_r32          
  vunpcklps %xmm2, %xmm10, %xmm15               #  3     0xa   4      OPC=vunpcklps_xmm_xmm_xmm  
  movdqa %xmm15, %xmm1                          #  4     0xe   5      OPC=movdqa_xmm_xmm         
  unpcklpd %xmm15, %xmm1                        #  5     0x13  5      OPC=unpcklpd_xmm_xmm       
  retq                                          #  6     0x18  1      OPC=retq                   
                                                                                                 
.size target, .-target
