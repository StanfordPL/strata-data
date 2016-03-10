  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpmovzxwq %xmm1, %ymm6           #  1     0     5      OPC=vpmovzxwq_ymm_xmm        
  vpunpckhqdq %ymm6, %ymm6, %ymm4  #  2     0x5   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vunpcklpd %xmm1, %xmm4, %xmm9    #  3     0x9   4      OPC=vunpcklpd_xmm_xmm_xmm    
  movq %xmm9, %r13                 #  4     0xd   5      OPC=movq_r64_xmm             
  movq $0x4, %rbx                  #  5     0x12  10     OPC=movq_r64_imm64           
  xchgw %r13w, %bx                 #  6     0x1c  4      OPC=xchgw_r16_r16            
  retq                             #  7     0x20  1      OPC=retq                     
                                                                                      
.size target, .-target
