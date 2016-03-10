  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  movq $0x0, %rax  #  1     0     10     OPC=movq_r64_imm64  
  movb %ah, %ah    #  2     0xa   2      OPC=movb_rh_rh      
  cltq             #  3     0xc   2      OPC=cltq            
  setnc %ah        #  4     0xe   3      OPC=setnc_rh        
  cwtl             #  5     0x11  1      OPC=cwtl            
  retq             #  6     0x12  1      OPC=retq            
                                                             
.size target, .-target
