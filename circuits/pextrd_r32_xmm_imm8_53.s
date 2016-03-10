  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label      
  movq $0xfffffffffffffffb, %rbx                #  2     0x5   10     OPC=movq_r64_imm64   
  vmovd %xmm5, %r9d                             #  3     0xf   5      OPC=vmovd_r32_xmm    
  sarb $0x1, %bh                                #  4     0x14  2      OPC=sarb_rh_one      
  popcntw %r9w, %bp                             #  5     0x16  6      OPC=popcntw_r16_r16  
  cmovael %r9d, %ebx                            #  6     0x1c  4      OPC=cmovael_r32_r32  
  retq                                          #  7     0x20  1      OPC=retq             
                                                                                           
.size target, .-target
