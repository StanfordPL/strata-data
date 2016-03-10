  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  xorl %ebx, %ebx                  #  1     0     2      OPC=xorl_r32_r32           
  vpmovzxwq %xmm1, %xmm14          #  2     0x2   5      OPC=vpmovzxwq_xmm_xmm      
  movsbw %bh, %bx                  #  3     0x7   4      OPC=movsbw_r16_rh          
  vunpckhpd %ymm14, %ymm14, %ymm7  #  4     0xb   5      OPC=vunpckhpd_ymm_ymm_ymm  
  cmovsw %bx, %bx                  #  5     0x10  4      OPC=cmovsw_r16_r16         
  movq %xmm7, %r15                 #  6     0x14  5      OPC=movq_r64_xmm           
  xchgw %r15w, %bx                 #  7     0x19  4      OPC=xchgw_r16_r16          
  retq                             #  8     0x1d  1      OPC=retq                   
                                                                                    
.size target, .-target
