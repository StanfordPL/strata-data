  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  setnge %dh          #  1     0    3      OPC=setnge_rh        
  shlb $0x1, %dh      #  2     0x3  2      OPC=shlb_rh_one      
  cmovnal %ebx, %ecx  #  3     0x5  3      OPC=cmovnal_r32_r32  
  xchgl %ecx, %ebx    #  4     0x8  2      OPC=xchgl_r32_r32    
  retq                #  5     0xa  1      OPC=retq             
                                                                
.size target, .-target
