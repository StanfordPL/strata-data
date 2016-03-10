  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xorl %eax, %eax   #  1     0    2      OPC=xorl_r32_r32   
  xchgl %eax, %eax  #  2     0x2  2      OPC=xchgl_r32_r32  
  xchgb %ah, %cl    #  3     0x4  2      OPC=xchgb_r8_rh    
  orb %ah, %bl      #  4     0x6  2      OPC=orb_r8_rh      
  retq              #  5     0x8  1      OPC=retq           
                                                            
.size target, .-target
