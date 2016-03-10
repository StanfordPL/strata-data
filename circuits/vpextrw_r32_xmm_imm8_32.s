  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode              
.target:                               #        0     0      OPC=<label>         
  movq $0x0, %rbx                      #  1     0     10     OPC=movq_r64_imm64  
  callq .move_128_64_xmm1_xmm12_xmm13  #  2     0xa   5      OPC=callq_label     
  xaddb %bl, %bl                       #  3     0xf   3      OPC=xaddb_r8_r8     
  xaddw %bx, %bx                       #  4     0x12  4      OPC=xaddw_r16_r16   
  movd %xmm12, %ecx                    #  5     0x16  5      OPC=movd_r32_xmm    
  cmovew %cx, %bx                      #  6     0x1b  4      OPC=cmovew_r16_r16  
  retq                                 #  7     0x1f  1      OPC=retq            
                                                                                 
.size target, .-target
