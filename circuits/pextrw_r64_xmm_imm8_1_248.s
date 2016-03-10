  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  movq $0x3, %rbx         #  1     0     10     OPC=movq_r64_imm64     
  roll $0x1, %ebx         #  2     0xa   2      OPC=roll_r32_one       
  vpmovzxwq %xmm1, %xmm5  #  3     0xc   5      OPC=vpmovzxwq_xmm_xmm  
  movq %xmm5, %rax        #  4     0x11  5      OPC=movq_r64_xmm       
  sbbb %bl, %bl           #  5     0x16  2      OPC=sbbb_r8_r8         
  cmovnsl %eax, %ebx      #  6     0x18  3      OPC=cmovnsl_r32_r32    
  retq                    #  7     0x1b  1      OPC=retq               
                                                                       
.size target, .-target
