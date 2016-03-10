  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  orb %bl, %ah      #  1     0    2      OPC=orb_rh_r8      
  movsbl %ah, %ebx  #  2     0x2  3      OPC=movsbl_r32_rh  
  retq              #  3     0x5  1      OPC=retq           
                                                            
.size target, .-target
