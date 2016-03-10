  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  movq $0xffffffffffffffe0, %rbx  #  1     0     10     OPC=movq_r64_imm64   
  popcntw %bx, %si                #  2     0xa   5      OPC=popcntw_r16_r16  
  vmovd %xmm1, %r12d              #  3     0xf   5      OPC=vmovd_r32_xmm    
  cmoval %r12d, %ebx              #  4     0x14  4      OPC=cmoval_r32_r32   
  retq                            #  5     0x18  1      OPC=retq             
                                                                             
.size target, .-target
