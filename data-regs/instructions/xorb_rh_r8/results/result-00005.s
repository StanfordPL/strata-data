  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  xorb %ah, %bl                   #  1     0     2      OPC=xorb_r8_rh      
  movq $0xfffffffffffffff8, %rax  #  2     0x2   10     OPC=movq_r64_imm64  
  movb %bl, %ah                   #  3     0xc   2      OPC=movb_rh_r8      
  cwtl                            #  4     0xe   1      OPC=cwtl            
  setne %r10b                     #  5     0xf   4      OPC=setne_r8        
  rolb $0x1, %r10b                #  6     0x13  3      OPC=rolb_r8_one     
  retq                            #  7     0x16  1      OPC=retq            
                                                                            
.size target, .-target
