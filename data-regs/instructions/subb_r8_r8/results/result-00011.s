  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  movq $0xfffffffffffffff8, %r9    #  1     0     10     OPC=movq_r64_imm64  
  movq $0xfffffffffffffff9, %r8    #  2     0xa   10     OPC=movq_r64_imm64  
  callq .move_016_032_r8w_r9w_edx  #  3     0x14  5      OPC=callq_label     
  xorl %eax, %eax                  #  4     0x19  2      OPC=xorl_r32_r32    
  sbbb %al, %dh                    #  5     0x1b  3      OPC=sbbb_rh_r8      
  testb %dh, %al                   #  6     0x1e  2      OPC=testb_r8_rh     
  xchgb %cl, %ah                   #  7     0x20  2      OPC=xchgb_rh_r8     
  sbbb %ah, %bl                    #  8     0x22  2      OPC=sbbb_r8_rh      
  retq                             #  9     0x24  1      OPC=retq            
                                                                             
.size target, .-target
