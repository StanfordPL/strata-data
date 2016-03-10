  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  vmaxpd %xmm1, %xmm1, %xmm3                    #  1     0     4      OPC=vmaxpd_xmm_xmm_xmm     
  vpmovzxwd %xmm3, %xmm0                        #  2     0x4   5      OPC=vpmovzxwd_xmm_xmm      
  vunpcklpd %ymm0, %ymm0, %ymm1                 #  3     0x9   4      OPC=vunpcklpd_ymm_ymm_ymm  
  movq $0x5, %rbx                               #  4     0xd   10     OPC=movq_r64_imm64         
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  5     0x17  5      OPC=callq_label            
  callq .move_016_032_r10w_r11w_ebx             #  6     0x1c  5      OPC=callq_label            
  retq                                          #  7     0x21  1      OPC=retq                   
                                                                                                 
.size target, .-target
