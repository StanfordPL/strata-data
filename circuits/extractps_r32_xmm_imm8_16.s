  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movq $0x1, %rbx     #  1     0     10     OPC=movq_r64_imm64   
  testb %bl, %bh      #  2     0xa   2      OPC=testb_rh_r8      
  movd %xmm1, %eax    #  3     0xc   4      OPC=movd_r32_xmm     
  cmovbel %eax, %ebx  #  4     0x10  3      OPC=cmovbel_r32_r32  
  retq                #  5     0x13  1      OPC=retq             
                                                                 
.size target, .-target
