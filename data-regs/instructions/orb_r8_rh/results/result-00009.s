  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  movq $0x0, %rcx  #  1     0     10     OPC=movq_r64_imm64  
  orb %bl, %ah     #  2     0xa   2      OPC=orb_rh_r8       
  movsbw %ah, %bx  #  3     0xc   4      OPC=movsbw_r16_rh   
  addb %ah, %ch    #  4     0x10  2      OPC=addb_rh_rh      
  retq             #  5     0x12  1      OPC=retq            
                                                             
.size target, .-target
