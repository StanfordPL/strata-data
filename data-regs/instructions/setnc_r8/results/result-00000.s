  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  setb %dil                       #  1     0     4      OPC=setb_r8         
  movq $0xffffffffffffffe0, %rbx  #  2     0x4   10     OPC=movq_r64_imm64  
  movsbq %dil, %rcx               #  3     0xe   4      OPC=movsbq_r64_r8   
  xchgb %cl, %bl                  #  4     0x12  2      OPC=xchgb_r8_r8     
  shlb $0x1, %bl                  #  5     0x14  2      OPC=shlb_r8_one     
  setng %bl                       #  6     0x16  3      OPC=setng_r8        
  retq                            #  7     0x19  1      OPC=retq            
                                                                            
.size target, .-target
