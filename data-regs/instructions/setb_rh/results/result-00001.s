  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x20, %rax  #  1     0     10     OPC=movq_r64_imm64  
  cbtw              #  2     0xa   2      OPC=cbtw            
  setnae %ah        #  3     0xc   3      OPC=setnae_rh       
  movzbl %ah, %esp  #  4     0xf   3      OPC=movzbl_r32_rh   
  addq %rsp, %rax   #  5     0x12  3      OPC=addq_r64_r64    
  cltq              #  6     0x15  2      OPC=cltq            
  retq              #  7     0x17  1      OPC=retq            
                                                              
.size target, .-target
