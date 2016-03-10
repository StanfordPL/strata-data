  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpckhpd %xmm2, %xmm1, %xmm7        #  2     0x5   4      OPC=vunpckhpd_xmm_xmm_xmm  
  punpcklwd %xmm11, %xmm7              #  3     0x9   5      OPC=punpcklwd_xmm_xmm      
  movdqa %xmm7, %xmm1                  #  4     0xe   4      OPC=movdqa_xmm_xmm         
  retq                                 #  5     0x12  1      OPC=retq                   
                                                                                        
.size target, .-target
