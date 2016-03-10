  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  movq $0x1, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  setnp %bh        #  2     0xa   3      OPC=setnp_rh        
  movw %bx, %ax    #  3     0xd   3      OPC=movw_r16_r16    
  retq             #  4     0x10  1      OPC=retq            
                                                             
.size target, .-target
