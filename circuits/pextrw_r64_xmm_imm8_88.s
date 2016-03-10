  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  movq $0x1, %rbx          #  1     0     10     OPC=movq_r64_imm64     
  vpmovzxwd %xmm1, %ymm11  #  2     0xa   5      OPC=vpmovzxwd_ymm_xmm  
  andnl %ebx, %ebx, %r9d   #  3     0xf   5      OPC=andnl_r32_r32_r32  
  addl %r9d, %ebx          #  4     0x14  3      OPC=addl_r32_r32       
  vmovd %xmm11, %r14d      #  5     0x17  5      OPC=vmovd_r32_xmm      
  cmovnsw %r14w, %bx       #  6     0x1c  5      OPC=cmovnsw_r16_r16    
  retq                     #  7     0x21  1      OPC=retq               
                                                                        
.size target, .-target
