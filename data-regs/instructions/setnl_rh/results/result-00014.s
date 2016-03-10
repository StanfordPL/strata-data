  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  movq $0x1, %rax  #  1     0     10     OPC=movq_r64_imm64  
  cwtd             #  2     0xa   2      OPC=cwtd            
  setge %dh        #  3     0xc   3      OPC=setge_rh        
  addw %dx, %ax    #  4     0xf   3      OPC=addw_r16_r16    
  retq             #  5     0x12  1      OPC=retq            
                                                             
.size target, .-target
