  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x80, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  rolw $0x1, %bx    #  2     0xa   3      OPC=rolw_r16_one    
  decw %bx          #  3     0xd   3      OPC=decw_r16        
  xorb %bl, %ah     #  4     0x10  2      OPC=xorb_rh_r8      
  retq              #  5     0x12  1      OPC=retq            
                                                              
.size target, .-target
