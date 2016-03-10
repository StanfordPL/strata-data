  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  movq $0x5, %rbx             #  1     0     10     OPC=movq_r64_imm64      
  vmovss %xmm1, %xmm1, %xmm2  #  2     0xa   4      OPC=vmovss_xmm_xmm_xmm  
  negb %bl                    #  3     0xe   2      OPC=negb_r8             
  movd %xmm2, %r14d           #  4     0x10  5      OPC=movd_r32_xmm        
  cmovbel %r14d, %ebx         #  5     0x15  4      OPC=cmovbel_r32_r32     
  retq                        #  6     0x19  1      OPC=retq                
                                                                            
.size target, .-target
