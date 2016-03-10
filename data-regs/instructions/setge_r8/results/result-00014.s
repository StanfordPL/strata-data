  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffff9, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  stc                             #  2     0xa   1      OPC=stc             
  setnge %bl                      #  3     0xb   3      OPC=setnge_r8       
  adcb %bh, %bl                   #  4     0xe   2      OPC=adcb_r8_rh      
  sete %bl                        #  5     0x10  3      OPC=sete_r8         
  retq                            #  6     0x13  1      OPC=retq            
                                                                            
.size target, .-target
