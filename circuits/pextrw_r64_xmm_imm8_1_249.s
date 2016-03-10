  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vpmovzxwd %xmm1, %xmm8       #  1     0     5      OPC=vpmovzxwd_xmm_xmm   
  vmovshdup %ymm8, %ymm11      #  2     0x5   5      OPC=vmovshdup_ymm_ymm   
  vmovss %xmm11, %xmm1, %xmm6  #  3     0xa   5      OPC=vmovss_xmm_xmm_xmm  
  movq %xmm6, %rbx             #  4     0xf   5      OPC=movq_r64_xmm        
  testw %bx, %bx               #  5     0x14  3      OPC=testw_r16_r16       
  cmovbl %ebx, %ebx            #  6     0x17  3      OPC=cmovbl_r32_r32      
  retq                         #  7     0x1a  1      OPC=retq                
                                                                             
.size target, .-target
