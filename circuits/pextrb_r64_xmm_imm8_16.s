  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vpmovzxbq %xmm1, %ymm10  #  1     0     5      OPC=vpmovzxbq_ymm_xmm  
  movd %xmm10, %edx        #  2     0x5   5      OPC=movd_r32_xmm       
  movq $0x5, %rbx          #  3     0xa   10     OPC=movq_r64_imm64     
  xchgb %bl, %dl           #  4     0x14  2      OPC=xchgb_r8_r8        
  retq                     #  5     0x16  1      OPC=retq               
                                                                        
.size target, .-target
