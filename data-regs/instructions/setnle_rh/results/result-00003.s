  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text            #  Line  RIP   Bytes  Opcode              
.target:          #        0     0      OPC=<label>         
  setng %cl       #  1     0     3      OPC=setng_r8        
  movq $0x0, %r9  #  2     0x3   10     OPC=movq_r64_imm64  
  xorb %r9b, %cl  #  3     0xd   3      OPC=xorb_r8_r8      
  setng %ah       #  4     0x10  3      OPC=setng_rh        
  retq            #  5     0x13  1      OPC=retq            
                                                            
.size target, .-target
