  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movq $0x20, %rcx  #  1     0    10     OPC=movq_r64_imm64  
  orb %cl, %cl      #  2     0xa  2      OPC=orb_r8_r8       
  sbbb %bl, %ah     #  3     0xc  2      OPC=sbbb_rh_r8      
  retq              #  4     0xe  1      OPC=retq            
                                                             
.size target, .-target
