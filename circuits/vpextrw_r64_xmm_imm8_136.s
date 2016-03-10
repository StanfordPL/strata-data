  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  vbroadcastss %xmm1, %ymm3         #  1     0     5      OPC=vbroadcastss_ymm_xmm   
  pmovzxwq %xmm3, %xmm2             #  2     0x5   5      OPC=pmovzxwq_xmm_xmm       
  vmaxpd %xmm1, %xmm1, %xmm15       #  3     0xa   4      OPC=vmaxpd_xmm_xmm_xmm     
  vunpcklps %xmm3, %xmm15, %xmm14   #  4     0xe   4      OPC=vunpcklps_xmm_xmm_xmm  
  vpmovzxwq %xmm14, %xmm1           #  5     0x12  5      OPC=vpmovzxwq_xmm_xmm      
  callq .move_128_064_xmm2_r10_r11  #  6     0x17  5      OPC=callq_label            
  movq %xmm1, %rbx                  #  7     0x1c  5      OPC=movq_r64_xmm           
  xchgw %r10w, %bx                  #  8     0x21  4      OPC=xchgw_r16_r16          
  retq                              #  9     0x25  1      OPC=retq                   
                                                                                     
.size target, .-target
