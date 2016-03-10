  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                  #  Line  RIP   Bytes  Opcode               
.target:                #        0     0      OPC=<label>          
  movq $0x7, %rbx       #  1     0     10     OPC=movq_r64_imm64   
  vmovups %xmm1, %xmm3  #  2     0xa   4      OPC=vmovups_xmm_xmm  
  vmovd %xmm3, %r13d    #  3     0xe   5      OPC=vmovd_r32_xmm    
  xaddw %bx, %r13w      #  4     0x13  5      OPC=xaddw_r16_r16    
  retq                  #  5     0x18  1      OPC=retq             
                                                                   
.size target, .-target
