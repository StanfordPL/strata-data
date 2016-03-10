  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  stc                             #  1     0     1      OPC=stc             
  movq $0xfffffffffffffffe, %r12  #  2     0x1   10     OPC=movq_r64_imm64  
  setnge %spl                     #  3     0xb   4      OPC=setnge_r8       
  adcb %r12b, %spl                #  4     0xf   3      OPC=adcb_r8_r8      
  setnz %ah                       #  5     0x12  3      OPC=setnz_rh        
  retq                            #  6     0x15  1      OPC=retq            
                                                                            
.size target, .-target
