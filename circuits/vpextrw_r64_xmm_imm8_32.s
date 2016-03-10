  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text               #  Line  RIP   Bytes  Opcode               
.target:             #        0     0      OPC=<label>          
  movq $0x8, %rbx    #  1     0     10     OPC=movq_r64_imm64   
  vmovd %xmm1, %ebp  #  2     0xa   4      OPC=vmovd_r32_xmm    
  popcntw %bp, %r8w  #  3     0xe   6      OPC=popcntw_r16_r16  
  cmovnsw %bp, %bx   #  4     0x14  4      OPC=cmovnsw_r16_r16  
  retq               #  5     0x18  1      OPC=retq             
                                                                
.size target, .-target
