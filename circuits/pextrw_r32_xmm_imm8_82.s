  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %ymm10  #  1     0     5      OPC=vpmovzxwd_ymm_xmm  
  movq $0x3, %rbx          #  2     0x5   10     OPC=movq_r64_imm64     
  movhlps %xmm10, %xmm10   #  3     0xf   4      OPC=movhlps_xmm_xmm    
  movd %xmm10, %r15d       #  4     0x13  5      OPC=movd_r32_xmm       
  xchgw %bx, %r15w         #  5     0x18  4      OPC=xchgw_r16_r16      
  retq                     #  6     0x1c  1      OPC=retq               
                                                                        
.size target, .-target
