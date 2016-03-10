  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  movq $0x5, %r10          #  1     0     10     OPC=movq_r64_imm64     
  xorl %eax, %eax          #  2     0xa   2      OPC=xorl_r32_r32       
  movw %ax, %r14w          #  3     0xc   4      OPC=movw_r16_r16       
  decw %r14w               #  4     0x10  4      OPC=decw_r16           
  seto %ah                 #  5     0x14  3      OPC=seto_rh            
  andnl %eax, %r10d, %esi  #  6     0x17  5      OPC=andnl_r32_r32_r32  
  adcb %cl, %ah            #  7     0x1c  2      OPC=adcb_rh_r8         
  andb %ah, %bl            #  8     0x1e  2      OPC=andb_r8_rh         
  retq                     #  9     0x20  1      OPC=retq               
                                                                        
.size target, .-target
