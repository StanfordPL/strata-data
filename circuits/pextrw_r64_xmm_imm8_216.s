  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movq $0x5, %rbx     #  1     0     10     OPC=movq_r64_imm64   
  movd %xmm1, %r14d   #  2     0xa   5      OPC=movd_r32_xmm     
  testb %bl, %bl      #  3     0xf   2      OPC=testb_r8_r8      
  cmovnlw %r14w, %bx  #  4     0x11  5      OPC=cmovnlw_r16_r16  
  retq                #  5     0x16  1      OPC=retq             
                                                                 
.size target, .-target
