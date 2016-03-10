  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movq $0x80, %rax  #  1     0    10     OPC=movq_r64_imm64  
  setnae %ah        #  2     0xa  3      OPC=setnae_rh       
  cltq              #  3     0xd  2      OPC=cltq            
  retq              #  4     0xf  1      OPC=retq            
                                                             
.size target, .-target
