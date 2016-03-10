  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  seta %al        #  1     0    3      OPC=seta_r8      
  salb $0x1, %al  #  2     0x3  2      OPC=salb_r8_one  
  setnle %ah      #  3     0x5  3      OPC=setnle_rh    
  retq            #  4     0x8  1      OPC=retq         
                                                        
.size target, .-target
