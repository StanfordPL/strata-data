  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movswq %bx, %rsp                #  1     0     4      OPC=movswq_r64_r16  
  shlb $0x1, %bh                  #  2     0x4   2      OPC=shlb_rh_one     
  sete %bl                        #  3     0x6   3      OPC=sete_r8         
  movq $0xffffffffffffffff, %rbp  #  4     0x9   10     OPC=movq_r64_imm64  
  xchgw %sp, %bx                  #  5     0x13  3      OPC=xchgw_r16_r16   
  xorl %ebp, %ebx                 #  6     0x16  2      OPC=xorl_r32_r32    
  retq                            #  7     0x18  1      OPC=retq            
                                                                            
.size target, .-target
