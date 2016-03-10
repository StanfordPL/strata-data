  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x4, %rbp   #  1     0     10     OPC=movq_r64_imm64  
  movzwl %bp, %ecx  #  2     0xa   3      OPC=movzwl_r32_r16  
  xaddb %bl, %ch    #  3     0xd   3      OPC=xaddb_rh_r8     
  subb %ah, %ch     #  4     0x10  2      OPC=subb_rh_rh      
  retq              #  5     0x12  1      OPC=retq            
                                                              
.size target, .-target
