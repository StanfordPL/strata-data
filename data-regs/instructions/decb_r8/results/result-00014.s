  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xffffffffffffffff, %r10  #  1     0     10     OPC=movq_r64_imm64  
  shlb $0x1, %r10b                #  2     0xa   3      OPC=shlb_r8_one     
  adcb %r10b, %bl                 #  3     0xd   3      OPC=adcb_r8_r8      
  retq                            #  4     0x10  1      OPC=retq            
                                                                            
.size target, .-target
