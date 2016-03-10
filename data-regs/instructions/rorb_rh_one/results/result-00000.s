  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbl %ah, %edi  #  1     0    3      OPC=movzbl_r32_rh  
  andb %dil, %dil   #  2     0x3  3      OPC=andb_r8_r8     
  movzbw %dil, %cx  #  3     0x6  5      OPC=movzbw_r16_r8  
  rorb $0x1, %cl    #  4     0xb  2      OPC=rorb_r8_one    
  xchgb %cl, %ah    #  5     0xd  2      OPC=xchgb_rh_r8    
  retq              #  6     0xf  1      OPC=retq           
                                                            
.size target, .-target
